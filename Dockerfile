FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime

# 작업 디렉토리 설정
WORKDIR /workspace

# 필요한 추가 패키지 설치
RUN pip install --upgrade pip && \
    pip install jupyterlab

RUN pip install pandas numpy transformers scikit-learn matplotlib

# JupyterLab 실행 설정
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
