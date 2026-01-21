# archlightningpose
Execute lightningposeinstall.sh
# lightning pose app man
1. pyenv global $venv (~/.pyenv/versions/venv10/bin/litpose run_app does not work from Models)
2. litpose run_app
3. http://localhost:8080
4. New Project (or Your Project, go to 8.)
5. Project Name (e.g., pr0j3c7)
6. Data directory (e.g.,/home/$USER/script/lp/pr0j3c7, ~ or - are not acceptable)
7. Keypoints (e.g., PointAlpha (\n) PointBeta (\n) PointNemo)
8. Multiview (e.g., None)
9. ---------- Labeler ----------
10. Label file
11. New label file (only CollectedData.csv is acceptable)
12. Upload a new session (e.g., yourvid.mp4)
13. Enter a number (e.g., 20)
14. (Label manually)
15. Save and next (or Save)
16. ---------- Models ----------
17. New model
18. Model name (e.g., sresnet50)
19. Model type (e.g., Supervised resnet50)
20. Labeled frames (e.g., CollectedData.csv)
21. Train/val split (e.g., Train prob:0.95, Val prob:0.05, Random seed:0)
22. Duration (e.g., epochs:300)
23. Batch size (e.g., 16)
24. (Wait until status:COMPLETED)
25. Run inference
26. Choose videos
27. Import (upload + transcode)
28. Run inference
29. ---------- Viewer ----------
30. (Check predictions)
