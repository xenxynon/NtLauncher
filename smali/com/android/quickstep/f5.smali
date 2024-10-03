.class public final synthetic Lcom/android/quickstep/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/f5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->i(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/content/Intent;)V

    return-void
.end method
