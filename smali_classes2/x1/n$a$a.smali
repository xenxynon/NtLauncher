.class final Lx1/n$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/n$a;->a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.IParser$DefaultImpls"
    f = "IParser.kt"
    l = {
        0x24,
        0x26
    }
    m = "parserAsync"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field synthetic n:Ljava/lang/Object;

.field o:I


# direct methods
.method constructor <init>(Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Lx1/n$a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lx1/n$a$a;->n:Ljava/lang/Object;

    iget p1, p0, Lx1/n$a$a;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/n$a$a;->o:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lx1/n$a;->a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
