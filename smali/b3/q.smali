.class public final synthetic Lb3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/q;->g:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lb3/q;->g:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1}, Lb3/t;->a(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
