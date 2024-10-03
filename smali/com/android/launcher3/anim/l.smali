.class public final synthetic Lcom/android/launcher3/anim/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/anim/FlingSpringAnim;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/l;->a:Lcom/android/launcher3/anim/FlingSpringAnim;

    iput-object p2, p0, Lcom/android/launcher3/anim/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/l;->c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p4, p0, Lcom/android/launcher3/anim/l;->d:F

    iput p5, p0, Lcom/android/launcher3/anim/l;->e:F

    iput-object p6, p0, Lcom/android/launcher3/anim/l;->f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/anim/l;->a:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget-object v1, p0, Lcom/android/launcher3/anim/l;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/anim/l;->c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v3, p0, Lcom/android/launcher3/anim/l;->d:F

    iget v4, p0, Lcom/android/launcher3/anim/l;->e:F

    iget-object v5, p0, Lcom/android/launcher3/anim/l;->f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/anim/FlingSpringAnim;->a(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
