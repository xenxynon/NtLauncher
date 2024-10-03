.class public final synthetic Lcom/android/quickstep/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/m5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/m5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->f(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    return-void
.end method
