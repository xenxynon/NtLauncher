.class public final synthetic Lcom/android/quickstep/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/AbsSwipeUpHandler$2;

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/r1;->g:Lcom/android/quickstep/AbsSwipeUpHandler$2;

    iput-object p2, p0, Lcom/android/quickstep/r1;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/r1;->g:Lcom/android/quickstep/AbsSwipeUpHandler$2;

    iget-object p0, p0, Lcom/android/quickstep/r1;->h:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$2;->a(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V

    return-void
.end method
