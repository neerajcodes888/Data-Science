# Cat-vs-Dog Image Classification

![Cat-Vs-Dog-Image-Classification](https://socialify.git.ci/neerajcodes888/Cat-Vs-Dog-Image-Classification/image?description=1&descriptionEditable=%20%20%20%20%20%20%20%20%20Repository%20for%20a%20deep%20learning%20model%20that%20classifies%20images%20as%20either%20cats%20or%20dogs%20using%20deep%20learning%20techniques.&font=Raleway&language=1&name=1&owner=1&pattern=Solid&theme=Dark)


This project aims to classify images as either cats or dogs using machine learning techniques.

## Dataset Index

| Filename          | Label | File Type | Resolution | Notes                       |
|-------------------|-------|-----------|------------|-----------------------------|
| cat001.jpg        | Cat   | JPEG      | 1280x720   |                             |
| cat002.jpg        | Cat   | JPEG      | 1920x1080  |                             |
| dog001.jpg        | Dog   | JPEG      | 800x600    |                             |
| dog002.jpg        | Dog   | JPEG      | 1024x768   |                             |

- **Filename**: The name of the image file.
- **Label**: The class label of the image (Cat or Dog).
- **File Type**: The file format of the image.
- **Resolution**: The dimensions of the image in pixels.
- **Notes**: Any additional notes or comments about the image.


## Screenshots

### Sample Input/Output

#### Input

![image](https://github.com/neerajcodes888/Cat-Vs-Dog-Image-Classification/assets/98253646/6382bfee-c8c9-4e70-a7b8-51017b43cf71)


#### Output
![image](https://github.com/neerajcodes888/Cat-Vs-Dog-Image-Classification/assets/98253646/cebca6fe-6c4f-472c-aad9-92e6f59c2884)


## Requirements

- Python 3.7 or higher
- TensorFlow 2.5.0
- NumPy 1.21.0
- Matplotlib 3.4.3
- Jupyter Notebook (optional, for running notebooks)


## Usage

### Downloading the Dataset

To use this dataset, you can download it from [link to dataset location]. Once downloaded, extract the files to your desired location on your local machine.

### Preprocessing

Before using the images for training or evaluation, you may need to preprocess them. Common preprocessing steps include resizing images to a consistent resolution, normalizing pixel values, and splitting the dataset into training, validation, and test sets.

### Incorporating into Machine Learning Models

You can use this dataset with popular machine learning frameworks such as TensorFlow, PyTorch, or scikit-learn. Load the images using your framework's data loading utilities, preprocess them as necessary, and feed them into your model for training or evaluation.

Here's an example of how you might load images using TensorFlow:

```python
import tensorflow as tf

# Define data loading parameters
image_dir = 'path/to/dataset/images'
batch_size = 32
image_size = (224, 224)




# Load training dataset
train_generator = datagen.flow_from_directory(
    image_dir,
    target_size=image_size,
    batch_size=batch_size,
    class_mode='binary',
    subset='training'
)

# Load validation dataset
validation_generator = datagen.flow_from_directory(
    image_dir,
    target_size=image_size,
    batch_size=batch_size,
    class_mode='binary',
    subset='validation'
)

# Now you can use train_generator and validation_generator as input to your model
```


## License
MIT License

Copyright (c) [2024] [Neeraj Kumar]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Credits
This dataset was compiled from [Kaggle Dataset](https://www.kaggle.com/datasets/salader/dogs-vs-cats). We acknowledge and appreciate their contributions.

