.class public final synthetic Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lo/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lo/a;->a:Lo/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->b(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method