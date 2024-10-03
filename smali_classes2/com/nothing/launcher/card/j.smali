.class public final synthetic Lcom/nothing/launcher/card/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/j;->g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/j;->g:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->a(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Landroid/animation/ValueAnimator;)V

    return-void
.end method
