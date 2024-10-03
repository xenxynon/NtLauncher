.class final Lc3/a$f;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/a;->t(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/animation/Animator;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lc3/a;

.field final synthetic h:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lc3/a;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lc3/a$f;->g:Lc3/a;

    iput-object p2, p0, Lc3/a$f;->h:Landroid/animation/AnimatorSet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lc3/a$f;->invoke(Landroid/animation/Animator;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc3/a$f;->g:Lc3/a;

    iget-object v2, p0, Lc3/a$f;->h:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lc3/a;->z(Lc3/a;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method
