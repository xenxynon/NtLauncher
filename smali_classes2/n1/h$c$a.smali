.class Ln1/h$c$a;
.super Ln1/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/h$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/h<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic k:Ln1/h$c;


# direct methods
.method constructor <init>(Ln1/h$c;)V
    .locals 0

    iput-object p1, p0, Ln1/h$c$a;->k:Ln1/h$c;

    iget-object p1, p1, Ln1/h$c;->g:Ln1/h;

    invoke-direct {p0, p1}, Ln1/h$d;-><init>(Ln1/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ln1/h$d;->a()Ln1/h$e;

    move-result-object p0

    iget-object p0, p0, Ln1/h$e;->l:Ljava/lang/Object;

    return-object p0
.end method
