.class public final synthetic Lcom/android/quickstep/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ljava/lang/Runnable;

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v5;->g:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/quickstep/v5;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/v5;->g:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/v5;->h:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
