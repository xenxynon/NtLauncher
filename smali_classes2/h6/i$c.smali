.class final synthetic Lh6/i$c;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/i;->b(Ljava/lang/CharSequence;I)Lg6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Ly5/l<",
        "Lh6/g;",
        "Lh6/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lh6/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh6/i$c;

    invoke-direct {v0}, Lh6/i$c;-><init>()V

    sput-object v0, Lh6/i$c;->g:Lh6/i$c;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lh6/g;

    const/4 v1, 0x1

    const-string v3, "next"

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lh6/g;)Lh6/g;
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lh6/g;->next()Lh6/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh6/g;

    invoke-virtual {p0, p1}, Lh6/i$c;->b(Lh6/g;)Lh6/g;

    move-result-object p0

    return-object p0
.end method
