.class public Lcom/android/searchlauncher/SearchLauncher;
.super Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultOverlay()Ll0/b;
    .locals 1

    new-instance v0, Lcom/android/searchlauncher/a;

    invoke-direct {v0, p0}, Lcom/android/searchlauncher/a;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method
