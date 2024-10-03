.class final synthetic Lg2/a$b;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Ly5/l<",
        "Lg2/m;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lg2/a;

    const/4 v1, 0x1

    const-string v4, "onServiceBind"

    const-string v5, "onServiceBind(Lcom/nothing/cardservice/ICardWidgetService;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lg2/m;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    check-cast p0, Lg2/a;

    invoke-virtual {p0, p1}, Lg2/a;->a(Lg2/m;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg2/m;

    invoke-virtual {p0, p1}, Lg2/a$b;->b(Lg2/m;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
