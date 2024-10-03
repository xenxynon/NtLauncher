.class public final synthetic Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lkotlin/jvm/internal/z;

.field public final synthetic h:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/e;->g:Lkotlin/jvm/internal/z;

    iput-object p2, p0, Lv1/e;->h:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lv1/e;->g:Lkotlin/jvm/internal/z;

    iget-object p0, p0, Lv1/e;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, p0, p1}, Lv1/f;->a(Lkotlin/jvm/internal/z;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V

    return-void
.end method
