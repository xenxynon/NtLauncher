.class public final synthetic Le2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Le2/c;


# direct methods
.method public synthetic constructor <init>(Le2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/b;->g:Le2/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le2/b;->g:Le2/c;

    check-cast p1, Ln5/k;

    invoke-static {p0, p1}, Le2/c;->F(Le2/c;Ln5/k;)V

    return-void
.end method
