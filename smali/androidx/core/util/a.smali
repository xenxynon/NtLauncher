.class public final synthetic Landroidx/core/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic a:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/a;->a:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/util/a;->a:Landroidx/core/util/Predicate;

    invoke-static {p0, p1}, Landroidx/core/util/Predicate;->e(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
