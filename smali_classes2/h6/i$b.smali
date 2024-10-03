.class final Lh6/i$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/i;->b(Ljava/lang/CharSequence;I)Lg6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lh6/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lh6/i;

.field final synthetic h:Ljava/lang/CharSequence;

.field final synthetic i:I


# direct methods
.method constructor <init>(Lh6/i;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lh6/i$b;->g:Lh6/i;

    iput-object p2, p0, Lh6/i$b;->h:Ljava/lang/CharSequence;

    iput p3, p0, Lh6/i$b;->i:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lh6/g;
    .locals 2

    iget-object v0, p0, Lh6/i$b;->g:Lh6/i;

    iget-object v1, p0, Lh6/i$b;->h:Ljava/lang/CharSequence;

    iget p0, p0, Lh6/i$b;->i:I

    invoke-virtual {v0, v1, p0}, Lh6/i;->a(Ljava/lang/CharSequence;I)Lh6/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh6/i$b;->a()Lh6/g;

    move-result-object p0

    return-object p0
.end method
