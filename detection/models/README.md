# Detection Models
stores model weights and model artifacts for player/ball detection.
**Input:** pretrained or fine-tuned model artifacts.
**Output:** weights loaded by `detection/player_detector.py` and `detection/ball_detector.py`.
> **Note:**
> Large production artifacts should normally be stored in an artifact/model registry rather than Git.