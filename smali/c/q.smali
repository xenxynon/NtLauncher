.class public final synthetic Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lc/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/q;

    invoke-direct {v0}, Lc/q;-><init>()V

    sput-object v0, Lc/q;->a:Lc/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lc/r$e;

    invoke-static {p1}, Lc/r;->g(Lc/r$e;)Z

    move-result p0

    return p0
.end method
