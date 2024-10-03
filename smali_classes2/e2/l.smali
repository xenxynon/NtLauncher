.class public final synthetic Le2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Le2/m;


# direct methods
.method public synthetic constructor <init>(Le2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/l;->g:Le2/m;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le2/l;->g:Le2/m;

    check-cast p1, Ln5/p;

    invoke-static {p0, p1}, Le2/m;->F(Le2/m;Ln5/p;)V

    return-void
.end method
