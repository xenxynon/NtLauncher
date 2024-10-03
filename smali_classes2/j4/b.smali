.class public final synthetic Lj4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/b$b;


# static fields
.field public static final synthetic a:Lj4/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj4/b;

    invoke-direct {v0}, Lj4/b;-><init>()V

    sput-object v0, Lj4/b;->a:Lj4/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->c(Lorg/json/JSONArray;)V

    return-void
.end method
