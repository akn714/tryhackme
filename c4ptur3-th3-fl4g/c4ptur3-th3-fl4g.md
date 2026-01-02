[Room Link](https://tryhackme.com/room/c4ptur3th3fl4g)

## Task 2
- command: `sox secretaudio_1559007588454.wav -n spectrogram`
- now the `spectrogram.png` file contains the secret message

## Task 4
```bash
$binwalk thmroom.task4.jpg
| Offset    | What it is      | Meaning                                  |
| --------- | --------------- | ---------------------------------------- |
| `0x0`     | JPG             | The visible image                        |
| `0x1E`    | TIFF            | Fake / decoy header                      |
| `0x122A7` | **RAR archive** | 🔥 **IMPORTANT**                         |
| `0x122EE` | **PNG image**   | 🔥 **VERY IMPORTANT**                    |
| `0x12385` | Zlib            | Compressed data (likely part of PNG/RAR) |
```
- now extract with `binwalk -e thmroom.task4.jpg`


