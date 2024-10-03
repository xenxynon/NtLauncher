.class public final synthetic Lk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lk/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/s;

    invoke-direct {v0}, Lk/s;-><init>()V

    sput-object v0, Lk/s;->a:Lk/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/launcher3/icons/IconCache;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
