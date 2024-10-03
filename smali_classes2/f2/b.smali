.class public final synthetic Lf2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lf2/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/b;

    invoke-direct {v0}, Lf2/b;-><init>()V

    sput-object v0, Lf2/b;->a:Lf2/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-static {p1}, Lf2/c$a;->d(Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
