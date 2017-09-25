import Foundation
import ObjectMapper
open class InstantMessageAttachmentInfo: Mappable {
    // Internal identifier of a message attachment
    open var `id`: String?
    // Type of a message attachment. The default value is 'Text'
    open var `type`: String?
    // Content type of an attachment, see also MIME Types. The default value is 'text/plain'
    open var `contentType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, contentType: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.contentType = `contentType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `contentType` <- map["contentType"]
    }
}
