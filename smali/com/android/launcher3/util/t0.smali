.class public final synthetic Lcom/android/launcher3/util/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/VibratorWrapper;

.field public final synthetic h:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/t0;->g:Lcom/android/launcher3/util/VibratorWrapper;

    iput-object p2, p0, Lcom/android/launcher3/util/t0;->h:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/t0;->g:Lcom/android/launcher3/util/VibratorWrapper;

    iget-object p0, p0, Lcom/android/launcher3/util/t0;->h:Landroid/os/VibrationEffect;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/VibratorWrapper;->a(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    return-void
.end method
