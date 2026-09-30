# -*- coding: utf-8 -*-
"""Katip Klavye Eğitim Uygulaması — giriş noktası."""
import sys
import traceback
from tkinter import messagebox
import threading
import time
from app.ui.main_window import KatipKlavyeApp


def main():
    try:
        app = KatipKlavyeApp()
        app.mainloop()
    except Exception:
        err = traceback.format_exc()
        try:
            messagebox.showerror(
                "Beklenmeyen Hata",
                f"Uygulama başlatılamadı:\n\n{err}",
            )
        except Exception:
            print(err, file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()