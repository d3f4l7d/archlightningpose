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
```pyenv activate <yourvenvname>```
~/.pyenv/versions/<yourvenvname>/bin/litpose run_app does not work BTW
2. Run app
```litpose run_app```
> [!TIP]
> Also ```LP_IGNORE_UPGRADE=1 DO_NOT_TRUCK=1 litpose run_app``` works w/o any upgrade or Umami web event tracking.
> In case you upgrade the app, execute like the below.
> ```pip install --upgrade pip``` then, 
> ```pip install --upgrade lightning-pose-app```

Then, click the link to your localhost server.
```http://localhost:8080```
### Getting Started From Scratch
### ---------- Project settings ----------
1. Click 'New Project'
2. Select 'From Scratch'
3. Fill 'Project Name' in "Local setup" (e.g., pr0j3c7)
4. Check 'Data directory' in "Local setup" (e.g.,/home/$USER/LPProjects/pr0j3c7, ~ or - are not acceptable)
5. Add 'Keypoints names' in "Keypoints" (e.g., sigmaA (\n) sigmaB (\n) ... (\n) sigmaH)
6. Add 'Camera view names' in "Multiview" (e.g., <yourvideoheader_top.mp4> (\n) <yourvideoheader_front.mp4>)
7. Hit 'Save'
### ---------- Labeler ----------
1. Label file
2. New label file (only CollectedData.csv is acceptable)
3. Upload a new session (e.g., yourvid_top.mp4)
4. Enter a number (e.g., 20 => 185, extraction should be once in a same vid, otherwise imgs are overlapping)
5. (Label manually)
6. Save and next (or Save)
### ---------- Models ----------
1. New model
2. Model name (e.g., srn50802003000032)
3. Model type (e.g., Supervised resnet50)
4. Labeled frames (e.g., CollectedData.csv)
5. Train/val split (e.g., Train prob:0.95 => 0.80, Val prob:0.05 => 0.20, Random seed:0)
6. Duration (e.g., epochs:300 => 30000)
7. Batch size (e.g., 16 => 32)
8. (Wait until status:COMPLETED)
9. Run inference
10. Choose videos
11. Import (upload + transcode)
12. Run inference
### ---------- Viewer ----------
1. (Check predictions)

## License
MIT License - see [LICENSE](/LICENSE) for more details.
