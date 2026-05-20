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
1. ``` pyenv activate <yourvenvname> ``` (In my case, venv10) (~/.pyenv/versions/venv10/bin/litpose run_app does not work from Models)
2. ``` pip install --upgrade pip ```
3. ``` pip install --upgrade lightning-pose-app ```
4. ``` litpose run_app ``` (``` LP_IGNORE_UPGRADE=1 DO_NOT_TRUCK=1 litpose run_app ``` also works BTW)
5. ``` http://localhost:8080 ```
6. New Project (or Your Project, go to 9.)
7. Project Name (e.g., pr0j3c7)
8. Data directory (e.g.,/home/$USER/script/lp/pr0j3c7, ~ or - are not acceptable)
9. Keypoints (e.g., PointAlpha (\n) PointBeta (\n) PointNemo)
10. Multiview (e.g., None)
11. ---------- Labeler ----------
12. Label file
13. New label file (only CollectedData.csv is acceptable)
14. Upload a new session (e.g., yourvid_top.mp4)
15. Enter a number (e.g., 20 => 185, extraction should be once in a same vid, otherwise imgs are overlapping)
16. (Label manually)
17. Save and next (or Save)
18. ---------- Models ----------
19. New model
20. Model name (e.g., srn50802003000032)
21. Model type (e.g., Supervised resnet50)
22. Labeled frames (e.g., CollectedData.csv)
23. Train/val split (e.g., Train prob:0.95 => 0.80, Val prob:0.05 => 0.20, Random seed:0)
24. Duration (e.g., epochs:300 => 30000)
25. Batch size (e.g., 16 => 32)
26. (Wait until status:COMPLETED)
27. Run inference
28. Choose videos
29. Import (upload + transcode)
30. Run inference
31. ---------- Viewer ----------
32. (Check predictions)

## License
MIT License - see [LICENSE](/LICENSE) for more details.
