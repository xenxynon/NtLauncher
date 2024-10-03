.class public Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleAndTranslation"
.end annotation


# instance fields
.field public scale:F

.field public translationX:F

.field public translationY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iput p2, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationX:F

    iput p3, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    return-void
.end method
