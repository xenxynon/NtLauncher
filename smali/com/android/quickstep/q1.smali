.class public final synthetic Lcom/android/quickstep/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q1;->g:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/q1;->g:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler$13;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
