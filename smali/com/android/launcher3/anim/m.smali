.class public final synthetic Lcom/android/launcher3/anim/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/m;->a:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/m;->a:Landroid/view/animation/Interpolator;

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/Interpolators;->f(Landroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method
