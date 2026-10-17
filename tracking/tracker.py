
#implements multi-object tracking algorithms (ByteTrack or BoT-SORT) to maintain consistent player IDs across sequential video frames.
#**input**: bounding box detections and confidence scores from /detection.
#**output**: bounding box coordinates with persistent ID histories sent to /pitch, /possession, /events, /storage and /teams.
