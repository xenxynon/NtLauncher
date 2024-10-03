.class public final synthetic Ly2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/f;->a:Ly5/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly2/f;->a:Ly5/l;

    invoke-static {p0, p1}, Ly2/g$a;->d(Ly5/l;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
