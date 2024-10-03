.class public final synthetic Lcom/android/quickstep/util/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/SwipePipToHomeAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/a1;->g:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/a1;->g:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->e(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/graphics/RectF;F)V

    return-void
.end method
