.class public final synthetic Lcom/android/quickstep/util/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/j0;->a:Lcom/android/quickstep/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/j0;->a:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->c(Lcom/android/quickstep/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
