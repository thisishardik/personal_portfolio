class Project {
  final String? title, description, url;

  Project({this.title, this.description, this.url});
}

List<Project> demo_projects = [
  Project(
    title:
        "Accelerating Innovation for Rainforest Biodiversity Assessment in a Complex Ecosystem using AI",
    description:
        "Developed novel technologies for Floral and Fauna Species Identification to be categorized into some level of Taxonomic groups. We utilized AWS SageMaker Studio for data mining and data labeling to build highly accurate species training and test datasets. Orchestrated ETL processes using in-house Python clients on open-access data warehouses for further analysis. Finally deployed interactive dashboards for the client to visualize the surveyed information for a comprehensive study.",
    url: "",
  ),
  Project(
    title: "Forum Posts Clustering and Document Embedding",
    description:
        "Incorporated Hierarchical document clustering to cluster forum posts from Meta Kaggle. I utilized a lightweight and unsupervised keyword extraction algorithm, YAKE, to extract important keywords from each document followed by feature engineering. Fine-tuned Word2Vec document vectors using GoogleNews embeddings which greatly increased the validation accuracy by 15.7%. ",
    url: "",
  ),
  Project(
    title: "AI Advertisement Web Platform",
    description:
        "An AI-powered advertisement platform that performs Face Detection to detect your age and gender via a camera and show you video advertisements related to the products that suit your corresponding age and gender in real-time. Utilizes Haar Cascade Frontal Face for detecting user's face in real-time and Wide Residual Networks for age and gender prediction. Developed using HTML, CSS Python, TensorFlow, Keras, OpenCV and Flask.",
    url: "",
  ),
  Project(
    title: "Fraud Detection in Retail Transactions using Deep Learning",
    description:
        "Reviewed customers’ credit card transactions to evaluate potential fraud. Detected and visualized fraudulent patterns using cluster analysis to better analyze data. I utilized Synthetic Minority Oversampling Technique (SMOTE) to overcome the class imbalance (CI) problem. Combined the XGBoost classifier with SMOTE to create a Resampling Pipeline that predicts fraudulent transactions based on labels provided in the training dataset.",
    url: "",
  ),
  Project(
    title: "Automated Driver Drowsiness Control Android Application",
    description:
        "Developed the methodology to detect and predict driver drowsiness at early stages using physical and physiological variables. A feasibility test is conducted to evaluate the accuracy and performance of the proposed methodology. AI techniques like Google Vision are utilized to analyze data for monitoring, detecting, predicting, and controlling driver drowsiness. An Android application developed in Java is prepared end-to-end for the user and applied for data collection in future research experiments.",
    url: "",
  ),
  Project(
    title: "Curae - People and Healthcare",
    description:
        "Curae is an AI-powered telemedicine app that reduces the hassle of offline appointments by transforming the entire appointment lifecycle online. All documents are assigned with unique ids on the server and are accessible using a unique QR code. It also supports a pre-assessment smart self-checkup chatbot that generates automated reports for quick diagnosis. Developed using Flutter, Provider, Node.js, Express API, AWS Lambda, AWS API Gateway, AWS Cognito, and AWS DynamoDB.",
    url: "",
  ),
];
