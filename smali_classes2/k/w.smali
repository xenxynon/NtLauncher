.class public final synthetic Lk/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lk/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/w;

    invoke-direct {v0}, Lk/w;-><init>()V

    sput-object v0, Lk/w;->a:Lk/w;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
