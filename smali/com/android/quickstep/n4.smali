.class public final synthetic Lcom/android/quickstep/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic h:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/n4;->g:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/n4;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/n4;->g:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/n4;->h:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->a(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V

    return-void
.end method
