.class public final synthetic Lcom/android/quickstep/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

.field public final synthetic h:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v1;->g:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iput-object p2, p0, Lcom/android/quickstep/v1;->h:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/v1;->g:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iget-object p0, p0, Lcom/android/quickstep/v1;->h:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0, p0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->a(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method
