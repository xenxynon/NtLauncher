.class final Lx1/d$f;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/d;->n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.CardInfoParser"
    f = "CardInfoParser.kt"
    l = {
        0x66
    }
    m = "inflateView"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Lx1/d;

.field i:I


# direct methods
.method constructor <init>(Lx1/d;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/d;",
            "Lq5/d<",
            "-",
            "Lx1/d$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/d$f;->h:Lx1/d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lx1/d$f;->g:Ljava/lang/Object;

    iget p1, p0, Lx1/d$f;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/d$f;->i:I

    iget-object v0, p0, Lx1/d$f;->h:Lx1/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lx1/d;->h(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
