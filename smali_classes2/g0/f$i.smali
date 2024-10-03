.class public final Lg0/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/f;->d(Lg0/f$c;Lg0/f$e;IZZ)Lg0/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/x;

.field final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/x;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lg0/f$i;->a:Lkotlin/jvm/internal/x;

    iput-object p2, p0, Lg0/f$i;->b:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lg0/f$i;->a:Lkotlin/jvm/internal/x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/x;->g:Z

    iget-object p0, p0, Lg0/f$i;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
