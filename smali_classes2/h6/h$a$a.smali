.class final Lh6/h$a$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Integer;",
        "Lh6/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lh6/h$a;


# direct methods
.method constructor <init>(Lh6/h$a;)V
    .locals 0

    iput-object p1, p0, Lh6/h$a$a;->g:Lh6/h$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lh6/e;
    .locals 0

    iget-object p0, p0, Lh6/h$a$a;->g:Lh6/h$a;

    invoke-virtual {p0, p1}, Lh6/h$a;->d(I)Lh6/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lh6/h$a$a;->a(I)Lh6/e;

    move-result-object p0

    return-object p0
.end method
