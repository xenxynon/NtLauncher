.class final Lx1/d$i;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/d;->q(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Ly5/p;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.CardInfoParser"
    f = "CardInfoParser.kt"
    l = {
        0xff,
        0x100,
        0x107,
        0x10a,
        0x113,
        0x11c
    }
    m = "performParseAsync"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:Ljava/lang/Object;

.field o:Ljava/lang/Object;

.field p:J

.field q:I

.field synthetic r:Ljava/lang/Object;

.field final synthetic s:Lx1/d;

.field t:I


# direct methods
.method constructor <init>(Lx1/d;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/d;",
            "Lq5/d<",
            "-",
            "Lx1/d$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/d$i;->s:Lx1/d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lx1/d$i;->r:Ljava/lang/Object;

    iget p1, p0, Lx1/d$i;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/d$i;->t:I

    iget-object v0, p0, Lx1/d$i;->s:Lx1/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lx1/d;->q(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
