## Installation
Execute like the below.
```
./lightningposeinstall.sh
```
or if you haven't configure your NVIDIA GPU, execute
```
./nvidiafku.sh
```
## lightning pose app man
### Start Server Process
1. Enter your python venv.
```
pyenv activate <yourvenvname>
```
~/.pyenv/versions/<yourvenvname>/bin/litpose run_app does not work BTW
2. Run app
```
litpose run_app
```
Also
```
LP_IGNORE_UPGRADE=1 DO_NOT_TRUCK=1 litpose run_app
```

```
pip install --upgrade pip
``` 
4. ``` pip install --upgrade lightning-pose-app ```
5. ``` litpose run_app ``` (``` LP_IGNORE_UPGRADE=1 DO_NOT_TRUCK=1 litpose run_app ``` also works BTW)
6. ``` http://localhost:8080 ```
7. New Project (or Your Project, go to 9.)
8. Project Name (e.g., pr0j3c7)
9. Data directory (e.g.,/home/$USER/script/lp/pr0j3c7, ~ or - are not acceptable)
10. Keypoints (e.g., PointAlpha (\n) PointBeta (\n) PointNemo)
11. Multiview (e.g., None)
12. ---------- Labeler ----------
13. Label file
14. New label file (only CollectedData.csv is acceptable)
15. Upload a new session (e.g., yourvid_top.mp4)
16. Enter a number (e.g., 20 => 185, extraction should be once in a same vid, otherwise imgs are overlapping)
17. (Label manually)
18. Save and next (or Save)
19. ---------- Models ----------
20. New model
21. Model name (e.g., srn50802003000032)
22. Model type (e.g., Supervised resnet50)
23. Labeled frames (e.g., CollectedData.csv)
24. Train/val split (e.g., Train prob:0.95 => 0.80, Val prob:0.05 => 0.20, Random seed:0)
25. Duration (e.g., epochs:300 => 30000)
26. Batch size (e.g., 16 => 32)
27. (Wait until status:COMPLETED)
28. Run inference
29. Choose videos
30. Import (upload + transcode)
31. Run inference
32. ---------- Viewer ----------
33. (Check predictions)

## License
MIT License - see [LICENSE](/LICENSE) for more details.
