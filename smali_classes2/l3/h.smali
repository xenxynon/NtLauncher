.class public final synthetic Ll3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ll3/i;


# direct methods
.method public synthetic constructor <init>(Ll3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/h;->a:Ll3/i;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ll3/h;->a:Ll3/i;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Ll3/i;->m(Ll3/i;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
