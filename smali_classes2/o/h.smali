.class public final synthetic Lo/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lo/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/h;

    invoke-direct {v0}, Lo/h;-><init>()V

    sput-object v0, Lo/h;->a:Lo/h;

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

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationListener;->e(Lcom/android/launcher3/notification/NotificationKeyData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
