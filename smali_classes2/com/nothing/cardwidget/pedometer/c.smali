.class public final synthetic Lcom/nothing/cardwidget/pedometer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/c;->g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/c;->g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;->a(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method
