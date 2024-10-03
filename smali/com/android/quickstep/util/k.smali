.class public final synthetic Lcom/android/quickstep/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/BorderAnimator;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/BorderAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/k;->g:Lcom/android/quickstep/util/BorderAnimator;

    iput-boolean p2, p0, Lcom/android/quickstep/util/k;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/k;->g:Lcom/android/quickstep/util/BorderAnimator;

    iget-boolean p0, p0, Lcom/android/quickstep/util/k;->h:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/util/BorderAnimator;->b(Lcom/android/quickstep/util/BorderAnimator;Z)V

    return-void
.end method
