import streamlit as st
import pandas as pd
from langchain.document_loaders.csv_loader import CSVLoader
import tempfile
import os
import google.generativeai as genai
from langchain_experimental.agents.agent_toolkits import create_csv_agent
from langchain_google_genai import ChatGoogleGenerativeAI
from dotenv import load_dotenv

load_dotenv()
os.getenv("GOOGLE_API_KEY")
genai.configure(api_key=os.getenv("GOOGLE_API_KEY"))


def main():
    # Configure Streamlit page
    
    st.set_page_config(page_title="Query With Your Spreadsheet")
    
    st.sidebar.header("Ask Questions To Your Data")

    # Allow the user to upload a file
    file = st.sidebar.file_uploader("Upload File", type=["csv", "xls", "xlsx"])

    if file is None:
        st.header("**Welcome to investigate into your Spreadshit!**")
        st.subheader("Upload your data file")
        st.write(
            "Please upload a CSV, XLS, or XLSX file using the file uploader on the sidebar. "
            "Once the file is uploaded, you can ask questions related to the data."
        )
        st.markdown('Thank You!')
        st.markdown('Neeraj Kumar')

    
        col1, col2, col3 = st.columns([1,1,1])
        with col1:
            
          st.link_button("Linkdin", "https://www.linkedin.com/in/neeraj-kumar-9a75811a2")
        with col2:
          st.link_button("Github", "https://github.com/neerajcodes888")
        with col3:
          st.link_button("Kaggle", "https://www.kaggle.com/neerajdata")
    else:
        # Create a temporary file to store the uploaded data
       
        with tempfile.NamedTemporaryFile(mode="wb", suffix=".csv", delete=False) as f:
            # Write the uploaded file content to the temporary file
            f.write(file.getvalue())
            f.flush()

            model = ChatGoogleGenerativeAI(model="gemini-pro", temperature=0.8)

            # Ask the user to input a question
            user_input = st.text_input("Question here:")

            # Create a CSV agent using the OpenAI language model and the temporary file
            agent = create_csv_agent(model, f.name, verbose=True)

            if user_input:
                # Run the agent on the user's question and get the response
                response = agent.run(user_input)
                st.write(response)

                try:
                    # Attempt to load the data directly using Pandas
                    data = pd.read_csv(f.name)
                except UnicodeDecodeError:
                    try:
                        # Try loading as an Excel file
                        data = pd.read_excel(f.name)
                    except Exception as e:
                        st.error(f"Error loading file: {e}")

                # Display the table with rows that match the user's condition
                if data is not None:
                    st.subheader("Filtered Data:")
                    
                    # Allow user to input condition
                    condition = st.text_input("Enter condition (e.g., column_name > 10):")
                    
                    if condition:
                        try:
                            filtered_data = data.query(condition)
                            st.dataframe(filtered_data)
                        except Exception as e:
                            st.error(f"Error filtering data: {e}")


if __name__ == "__main__":
    main()
