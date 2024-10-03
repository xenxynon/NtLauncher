.class public final synthetic Lk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lk/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/y;

    invoke-direct {v0}, Lk/y;-><init>()V

    sput-object v0, Lk/y;->a:Lk/y;

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

    check-cast p1, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->p(Lcom/android/launcher3/model/data/IconRequestInfo;)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object p0

    return-object p0
.end method
