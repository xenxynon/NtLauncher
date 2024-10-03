.class public Lv2/a;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/a$a;
    }
.end annotation


# static fields
.field public static final g:Lv2/a$a;

.field private static h:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lv2/a;->g:Lv2/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lv2/a;->h:Landroid/app/Application;

    return-object v0
.end method

.method public static final synthetic b(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lv2/a;->h:Landroid/app/Application;

    return-void
.end method

.method public static final c()Landroid/app/Application;
    .locals 1

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 1

    new-instance p0, Landroidx/work/Configuration$Builder;

    invoke-direct {p0}, Landroidx/work/Configuration$Builder;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object p0

    const-string v0, "Builder().setMinimumLoggingLevel(VERBOSE).build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
