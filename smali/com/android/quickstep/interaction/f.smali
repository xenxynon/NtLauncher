.class public final synthetic Lcom/android/quickstep/interaction/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/AllSetActivity$1;

.field public final synthetic h:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/f;->g:Lcom/android/quickstep/interaction/AllSetActivity$1;

    iput-object p2, p0, Lcom/android/quickstep/interaction/f;->h:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/f;->g:Lcom/android/quickstep/interaction/AllSetActivity$1;

    iget-object p0, p0, Lcom/android/quickstep/interaction/f;->h:Landroid/os/VibrationEffect;

    invoke-static {v0, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;->a(Lcom/android/quickstep/interaction/AllSetActivity$1;Landroid/os/VibrationEffect;)V

    return-void
.end method
