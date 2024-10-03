.class public final Lc3/a$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/a;->v(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lc3/a;


# direct methods
.method constructor <init>(Lc3/a;)V
    .locals 0

    iput-object p1, p0, Lc3/a$h;->g:Lc3/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc3/a$h;->g:Lc3/a;

    invoke-static {p0}, Lc3/a;->e(Lc3/a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc3/a$h;->g:Lc3/a;

    invoke-static {p0}, Lc3/a;->e(Lc3/a;)V

    return-void
.end method
