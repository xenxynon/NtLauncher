.class public final synthetic Ll3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/f;->a:Ly5/l;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ll3/f;->a:Ly5/l;

    invoke-static {p0, p1}, Ll3/g;->c(Ly5/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
