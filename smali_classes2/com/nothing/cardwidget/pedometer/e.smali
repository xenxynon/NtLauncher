.class public final synthetic Lcom/nothing/cardwidget/pedometer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/graphics/drawable/AnimationDrawable;

.field public final synthetic h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/e;->g:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/nothing/cardwidget/pedometer/e;->h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/e;->g:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/e;->h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    invoke-static {v0, p0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;->c(Landroid/graphics/drawable/AnimationDrawable;Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;)V

    return-void
.end method
