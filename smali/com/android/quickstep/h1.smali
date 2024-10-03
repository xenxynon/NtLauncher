.class public final synthetic Lcom/android/quickstep/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/h1;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/h1;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->U(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method
